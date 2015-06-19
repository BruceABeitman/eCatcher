.class final Lcom/instagram/i/c/m;
.super Lcom/instagram/ui/b/a;
.source "NewsfeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/i/c/g;


# direct methods
.method public constructor <init>(Lcom/instagram/i/c/g;Landroid/support/v4/app/s;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/i/c/m;->a:Lcom/instagram/i/c/g;

    invoke-direct {p0, p2}, Lcom/instagram/ui/b/a;-><init>(Landroid/support/v4/app/s;)V

    return-void
.end method


# virtual methods
.method public final c(I)Landroid/support/v4/app/Fragment;
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Lcom/instagram/i/c/e;

    invoke-direct {v0}, Lcom/instagram/i/c/e;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    new-instance v0, Lcom/instagram/i/c/q;

    invoke-direct {v0}, Lcom/instagram/i/c/q;-><init>()V

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
