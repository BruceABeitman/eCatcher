.class final Lcom/instagram/android/fragment/cw;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ct;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cw;->a:Lcom/instagram/android/fragment/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/cw;->a:Lcom/instagram/android/fragment/ct;

    invoke-static {v0}, Lcom/instagram/android/fragment/ct;->d(Lcom/instagram/android/fragment/ct;)V

    return-void
.end method
