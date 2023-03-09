{{- define "selector" }}
app: {{ .Values.Deployment.matchLabels.app }}
{{- end }}