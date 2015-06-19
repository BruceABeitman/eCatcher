.class final Lcom/instagram/android/fragment/bv;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bv;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/bo;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bv;-><init>(Lcom/instagram/android/fragment/bo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-static {}, Lcom/instagram/android/fragment/bo;->d()Ljava/lang/Class;

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    iget-object v0, p0, Lcom/instagram/android/fragment/bv;->a:Lcom/instagram/android/fragment/bo;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/bo;->b(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .registers 2

    invoke-static {}, Lcom/instagram/android/fragment/bo;->d()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .registers 2

    invoke-static {}, Lcom/instagram/android/fragment/bo;->d()Ljava/lang/Class;

    return-void
.end method
