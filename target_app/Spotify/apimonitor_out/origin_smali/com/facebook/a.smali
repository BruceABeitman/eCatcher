.class final Lcom/facebook/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/facebook/a;->a:I

    iput-object p1, p0, Lcom/facebook/a;->b:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/a;->a:I

    return v0
.end method

.method final b()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .registers 2

    iget-object v0, p0, Lcom/facebook/a;->b:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object v0
.end method
