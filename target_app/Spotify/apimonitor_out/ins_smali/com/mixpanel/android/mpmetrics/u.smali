.class final Lcom/mixpanel/android/mpmetrics/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private final a:Landroid/content/Context;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/mixpanel/android/mpmetrics/v;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/v;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/u;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/u;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/u;->c:Lcom/mixpanel/android/mpmetrics/v;
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/u;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/u;->b:Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/u;->c:Lcom/mixpanel/android/mpmetrics/v;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/u;->c:Lcom/mixpanel/android/mpmetrics/v;
invoke-interface {v1, v0}, Lcom/mixpanel/android/mpmetrics/v;->a(Landroid/content/SharedPreferences;)V
:cond_12
return-object v0
.end method