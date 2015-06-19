.class final Lcom/instagram/feed/survey/i;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/h;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/i;->a:Lcom/instagram/feed/survey/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/survey/i;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->a(Lcom/instagram/feed/survey/h;)V

    return-void
.end method
