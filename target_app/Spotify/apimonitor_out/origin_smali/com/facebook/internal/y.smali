.class final Lcom/facebook/internal/y;
.super Lcom/facebook/internal/z;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/z;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/internal/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.facebook.orca"

    return-object v0
.end method
