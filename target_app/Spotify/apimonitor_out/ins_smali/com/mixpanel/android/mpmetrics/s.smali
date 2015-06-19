.class public final Lcom/mixpanel/android/mpmetrics/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/s;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/s;->a:Ljava/lang/String;
return-void
.end method
.method public final a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/s;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/s;->a:Ljava/lang/String;
return-object v0
.end method