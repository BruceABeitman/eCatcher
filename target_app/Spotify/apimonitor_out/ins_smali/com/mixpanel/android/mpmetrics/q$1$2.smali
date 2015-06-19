.class final Lcom/mixpanel/android/mpmetrics/q$1$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/Survey;
.field final synthetic b:Lcom/mixpanel/android/mpmetrics/q$1;
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/q$1;Lcom/mixpanel/android/mpmetrics/Survey;)V
.registers 3
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mixpanel/android/mpmetrics/q$1$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;
move-result-object v0
const-string v1, "$surveys"
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;
move-result-object v0
const-string v1, "$collections"
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v1, " - Lcom/mixpanel/android/mpmetrics/q$1$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method