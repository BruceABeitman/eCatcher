.class final Lcom/instagram/a/h;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/a/h;->a:Lcom/instagram/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    const-string v0, "ActionBarService.action_bar_refresh_click"

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V

    return-void
.end method