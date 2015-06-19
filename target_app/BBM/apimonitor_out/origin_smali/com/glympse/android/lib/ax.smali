.class Lcom/glympse/android/lib/ax;
.super Lcom/glympse/android/lib/ar;
.source "DiagnosticsAppend.java"


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public url(Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string v0, "tickets/append_diagnostics"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ax;->jv:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_1a

    const-string v1, "?ids="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/ax;->jv:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method
