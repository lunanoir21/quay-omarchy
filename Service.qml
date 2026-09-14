import QtQuick
import Quickshell
import "./quay" as QuayModule

// Omarchy entry point for the "service" kind. Quay owns its own per-screen
// PanelWindow (edge reveal, layer-shell surface, mask) so there is nothing
// for omarchy-shell to summon or position — QuayHost just needs to exist
// once, which is exactly what a headless service is for.
Scope {
    QuayModule.QuayHost {}
}
