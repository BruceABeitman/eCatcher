.class public Lco/vine/android/service/PendingAction;
.super Ljava/lang/Object;
.source "PendingAction.java"


# instance fields
.field public final actionCode:I

.field public final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Lco/vine/android/service/PendingAction;->actionCode:I

    iput-object p2, p0, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    return-void
.end method
