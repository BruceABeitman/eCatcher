.class Lcom/millennialmedia/android/dn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/dn;->a(Landroid/widget/RelativeLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/dn;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/dn;->a(Lcom/millennialmedia/android/dn;Z)Z

    iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;

    invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->u()V

    :cond_11
    return-void
.end method
