.class public Lcom/twidroid/ui/a/o;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "FavoritesAdapter"


# instance fields
.field private W:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/twidroid/ui/a/o;->W:I

    iput-object p2, p0, Lcom/twidroid/ui/a/o;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/o;->c(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twidroid/ui/a/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
