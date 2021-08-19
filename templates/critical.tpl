{{- $critical := 0 }}
  {{- range . }}
    {{- range .Vulnerabilities }}
      {{- if  eq .Severity "CRITICAL" }}
        {{- $critical = add $critical 1 }}
      {{- end }}
    {{- end}}
  {{- end}}
{{ $critical }}
