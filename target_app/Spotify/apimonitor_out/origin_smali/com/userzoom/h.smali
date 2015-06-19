.class public final Lcom/userzoom/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/userzoom/h;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:[Lcom/userzoom/cd;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/userzoom/h;

    invoke-direct {v0}, Lcom/userzoom/h;-><init>()V

    sput-object v0, Lcom/userzoom/h;->a:Lcom/userzoom/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/userzoom/h;->e:I

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/userzoom/h;->b:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/userzoom/cd;

    iput-object v0, p0, Lcom/userzoom/h;->c:[Lcom/userzoom/cd;

    iput v1, p0, Lcom/userzoom/h;->d:I

    iput v1, p0, Lcom/userzoom/h;->e:I

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Lcom/userzoom/cd;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/userzoom/h;->b:[Ljava/lang/String;

    iput-object p2, p0, Lcom/userzoom/h;->c:[Lcom/userzoom/cd;

    iput p3, p0, Lcom/userzoom/h;->d:I

    iput p4, p0, Lcom/userzoom/h;->e:I

    return-void
.end method

.method public static a()Lcom/userzoom/h;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v0, Lcom/userzoom/h;->a:Lcom/userzoom/h;

    new-instance v1, Lcom/userzoom/h;

    iget-object v2, v0, Lcom/userzoom/h;->b:[Ljava/lang/String;

    iget-object v3, v0, Lcom/userzoom/h;->c:[Lcom/userzoom/cd;

    iget v4, v0, Lcom/userzoom/h;->d:I

    iget v0, v0, Lcom/userzoom/h;->e:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/userzoom/h;-><init>([Ljava/lang/String;[Lcom/userzoom/cd;II)V

    return-object v1
.end method
