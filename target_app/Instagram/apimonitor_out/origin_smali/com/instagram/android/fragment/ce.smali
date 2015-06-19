.class final Lcom/instagram/android/fragment/ce;
.super Lcom/instagram/api/j/f;
.source "FollowDestinationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cc;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ce;->a:Lcom/instagram/android/fragment/cc;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ce;->a:Lcom/instagram/android/fragment/cc;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    return-void
.end method
