#!/bin/bash

convert_seconds() {
    seconds=$1

    minutes=$((seconds / 60))
    hours=$((minutes / 60))
    days=$((hours / 24))
    months=$((days / 30))  # Annahme: Ein Monat hat durchschnittlich 30 Tage
    years=$((days / 365))   # Annahme: Ein Jahr hat durchschnittlich 365 Tage

    # Berechne die Reste für die nächstkleinere Zeiteinheit
    seconds=$((seconds % 60))
    minutes=$((minutes % 60))
    hours=$((hours % 24))
    days=$((days % 30))
    months=$((months % 12))

    # Gib das Ergebnis aus
    echo "$years Jahre, $months Monate, $days Tage, $hours Stunden, $minutes Minuten, $seconds Sekunden"
}

# Benutzer nach der Anzahl der Sekunden fragen
read -p "Geben Sie die Anzahl der Sekunden ein: " user_seconds

# Funktion aufrufen und das Ergebnis ausgeben
convert_seconds "$user_seconds"
