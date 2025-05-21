{{- define "postgresql.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "postgresql.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "postgresql.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}