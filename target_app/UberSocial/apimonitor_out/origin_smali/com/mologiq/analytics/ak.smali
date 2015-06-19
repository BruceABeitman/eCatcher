.class public Lcom/mologiq/analytics/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "1.2.9"

.field public static final b:Ljava/lang/String; = "2014-07-08"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcom/mologiq/analytics/b;->a()I

    move-result v0

    goto :goto_b
.end method
