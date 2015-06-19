.class final Lcom/facebook/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/facebook/AppEventsLogger$FlushResult;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/b;->a:I

    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->a:Lcom/facebook/AppEventsLogger$FlushResult;

    iput-object v0, p0, Lcom/facebook/b;->b:Lcom/facebook/AppEventsLogger$FlushResult;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/b;-><init>()V

    return-void
.end method
