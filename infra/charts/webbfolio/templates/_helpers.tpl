{{- define "webbfolio.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "webbfolio.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "webbfolio.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "webbfolio.labels" -}}
app.kubernetes.io/name: {{ include "webbfolio.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "webbfolio.selectorLabels" -}}
app.kubernetes.io/name: {{ include "webbfolio.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}