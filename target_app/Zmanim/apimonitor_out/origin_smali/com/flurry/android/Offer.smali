.class public final Lcom/flurry/android/Offer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/android/AdImage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/AdImage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/Offer;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/Offer;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/Offer;->c:Lcom/flurry/android/AdImage;

    return-void
.end method


# virtual methods
.method public final getImage()Lcom/flurry/android/AdImage;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/Offer;->c:Lcom/flurry/android/AdImage;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/Offer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/Offer;->b:Ljava/lang/String;

    return-object v0
.end method
