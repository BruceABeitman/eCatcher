.class public Lcom/twidroid/ui/a/ab;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;DDIZ)V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p8}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    return-void
.end method
