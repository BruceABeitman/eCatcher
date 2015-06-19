.class public abstract Lcom/instagram/android/fragment/ew;
.super Lcom/instagram/android/fragment/a;
.source "SimpleFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/feed/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final X()Lcom/instagram/android/feed/a/a;
    .registers 3

    new-instance v0, Lcom/instagram/android/feed/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ew;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method
