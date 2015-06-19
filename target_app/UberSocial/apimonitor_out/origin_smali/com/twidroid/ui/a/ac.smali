.class public Lcom/twidroid/ui/a/ac;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "SearchTweetsAdapter"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/twidroid/ui/a/ac;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
