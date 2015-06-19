.class final Lcom/instagram/android/creation/a/ab;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/ab;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/instagram/android/creation/a/ab;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->h(Lcom/instagram/android/creation/a/t;)Z

    :cond_7
    return-void
.end method
