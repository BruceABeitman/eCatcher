.class public final Landroid/support/v4/app/ah;
.super Landroid/support/v4/app/ao;
.source "NotificationCompat.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/ao;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ah;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ag;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/ao;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ah;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/ag;)V

    return-void
.end method
