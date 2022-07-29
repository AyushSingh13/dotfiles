# A list of custom scripts to load from .bashrc/.zshrc

kfm() {
    # kfm = "Kill For Me"
    # $1 - name of process you want to kill for yourself
    ps -ef | grep $(whoami) | grep $1 | awk '{print $2}' | xargs kill -9
}

date_label() {
    date +"%Y_%m_%d"
}

time_label() {
    date +"%H_%M_%S"
}

db_backup() {
    # $1 - Database Name
    # $2 - Postgres Host
    # $3 - Postgres Host Password
    # TODO: Remove need to enter password
    FILE_NAME=$1_$2_$(date_label)_$(time_label).dump
    echo "Backing up '$1' db from host '$2' to $FILE_NAME"
    pg_dump -w -Fc -h $2 -U sp_risk $1 > /lxhome/$(whoami)/db_backups/$FILE_NAME
}

db_restore() {
    # $1 - Backup Filename (e.g. dbname_dbhost_2022_02_04_15_58_56.dump)
    # $2 - Database Name
    # $3 - Postgres Host
    # TODO: Automatically pickup latest dump for DB if file not given explicitly
    # TODO: Remove need to enter password
    echo "Using '$1' to restore to '$2' db on host '$3'"
    pg_restore --verbose --clean --no-acl --no-owner -h $3 -U sp_risk -d $2 /lxhome/$(whoami)/db_backups/$1
}
