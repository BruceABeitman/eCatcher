.class final Lcom/instagram/feed/survey/k;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/instagram/feed/survey/b;
.field final synthetic b:Lcom/instagram/feed/survey/h;
.method constructor <init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/survey/k;->b:Lcom/instagram/feed/survey/h;
iput-object p2, p0, Lcom/instagram/feed/survey/k;->a:Lcom/instagram/feed/survey/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 5
iget-object v0, p0, Lcom/instagram/feed/survey/k;->a:Lcom/instagram/feed/survey/b;
iget-object v1, p0, Lcom/instagram/feed/survey/k;->b:Lcom/instagram/feed/survey/h;
invoke-static {v1}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/instagram/feed/survey/o;->a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;Z)V
return-void
.end method