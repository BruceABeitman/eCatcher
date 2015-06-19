.class public final Landroid/support/v4/app/ay;
.super Landroid/support/v4/app/bk;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ba;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ay;->a(Landroid/support/v4/app/ba;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/ay;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay;
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/ay;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ay;->g:Z

    return-object p0
.end method
