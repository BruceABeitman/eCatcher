.class public Lcom/twidroid/ui/a/z;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "RetweetAdapter"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    return-void
.end method
