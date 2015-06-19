.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ai;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ai;->b:Ljava/lang/String;

    const-string v0, "http://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    iput-object v0, p0, Lcom/google/android/gms/internal/ai;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ai;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->b:Ljava/lang/String;

    return-object v0
.end method
