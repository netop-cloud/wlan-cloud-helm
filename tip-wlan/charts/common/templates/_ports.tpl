{{/*
    This template will be used to iterate through the debug-ports and generate
    debug-ports mapping
  */}}

{{- define "container.dev.debugport" -}}
  {{- range $index, $portid := .Values.debugPorts }}
  - name: debugport-{{ $index }}
    containerPort: {{ $portid }}
    protocol: TCP
  {{- end }}
{{- end -}}

{{- define "service.dev.debugport" -}}
  {{- range $index, $portid := .Values.debugPorts }}
  - port: {{ $portid }}
    targetPort: {{ $portid }}
    protocol: TCP
    name: debugport-{{ $index }}
    {{- if eq $.Values.service.type "NodePort" }}
    nodePort: {{ $portid }}
    {{- end }}   
  {{- end }}
{{- end -}}