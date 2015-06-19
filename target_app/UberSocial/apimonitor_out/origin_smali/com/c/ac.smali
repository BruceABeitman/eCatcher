.class public abstract Lcom/c/ac;
.super Lcom/c/co;


# static fields
.field public static a:I

.field private static b:Lcom/c/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/c/ac;->b:Lcom/c/ac;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/co;-><init>()V

    return-void
.end method

.method public static b(Lcom/c/b;)Lcom/c/ac;
    .registers 2

    sget-object v0, Lcom/c/ac;->b:Lcom/c/ac;

    if-nez v0, :cond_a

    new-instance v0, Lcom/c/ah;

    invoke-direct {v0, p0}, Lcom/c/ah;-><init>(Lcom/c/b;)V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/c/ac;->b:Lcom/c/ac;

    invoke-virtual {v0, p0}, Lcom/c/ac;->a(Lcom/c/b;)Lcom/c/ac;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public abstract a(Lcom/c/b;)Lcom/c/ac;
.end method

.method public abstract b()V
.end method

.method public abstract c()Lcom/c/bg;
.end method

.method public abstract m_()V
.end method
