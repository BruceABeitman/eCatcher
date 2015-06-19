.class final Lcom/mixpanel/android/mpmetrics/l$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/mixpanel/android/mpmetrics/v;
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/l;
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/l;)V
.registers 2
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l$1;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/SharedPreferences;)V
.registers 4
invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/r;->a(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l$1;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONArray;)V
:cond_b
return-void
.end method