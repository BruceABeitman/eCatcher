.class final Lcom/instagram/android/directshare/d/h;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/h;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/d/h;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;Z)Z

    return-void
.end method
