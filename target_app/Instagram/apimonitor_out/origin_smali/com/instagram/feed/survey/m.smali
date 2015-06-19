.class final Lcom/instagram/feed/survey/m;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/b;

.field final synthetic b:Lcom/instagram/feed/survey/h;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/survey/m;->b:Lcom/instagram/feed/survey/h;

    iput-object p2, p0, Lcom/instagram/feed/survey/m;->a:Lcom/instagram/feed/survey/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/feed/survey/m;->a:Lcom/instagram/feed/survey/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/m;->b:Lcom/instagram/feed/survey/h;

    invoke-static {v1}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/o;->a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;)V

    iget-object v0, p0, Lcom/instagram/feed/survey/m;->b:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->e(Lcom/instagram/feed/survey/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
