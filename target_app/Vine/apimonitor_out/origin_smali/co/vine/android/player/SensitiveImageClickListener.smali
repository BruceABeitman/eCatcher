.class public abstract Lco/vine/android/player/SensitiveImageClickListener;
.super Ljava/lang/Object;
.source "SensitiveImageClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final mExplicitDismissed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPosition:I


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/player/SensitiveImageClickListener;->mExplicitDismissed:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public setPosition(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/player/SensitiveImageClickListener;->mPosition:I

    return-void
.end method
