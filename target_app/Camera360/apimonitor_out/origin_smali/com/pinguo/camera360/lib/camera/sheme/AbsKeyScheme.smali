.class public abstract Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;
.source "AbsKeyScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final keyName:Ljava/lang/String;

.field public final type:Lcom/pinguo/camera360/lib/camera/sheme/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme;->keyName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme;->type:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    return-void
.end method
