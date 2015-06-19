.class final Lcom/instagram/feed/survey/j;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/b;

.field final synthetic b:Lcom/instagram/feed/survey/h;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;

    iput-object p2, p0, Lcom/instagram/feed/survey/j;->a:Lcom/instagram/feed/survey/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/feed/survey/j;->a:Lcom/instagram/feed/survey/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;

    invoke-static {v1}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/survey/o;->a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;Z)V

    iget-object v0, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->c(Lcom/instagram/feed/survey/h;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
