.class public final Lcom/instagram/android/c/b/e;
.super Lcom/instagram/common/a/a/c;
.source "FacebookAccountsGraphResponse.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/share/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/share/b/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/c/b/e;->a:Ljava/util/List;

    return-object v0
.end method
