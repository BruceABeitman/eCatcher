.class public Lcom/ubermedia/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LicenseHelper"

.field private static final b:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNpPxQPHcJHd9h0B+H2hwDWwAlZnHb304cNbaUC1EzobD68poF4STMo2G6tIBqf6HMczHB535mTTjEc2bYC71p021Aw5sl5Gd6ECuClUXwqMl/73NCF7kZM34BRx4dFpTtuuagVLlQcE5usN7NKjhXcNc46aIhyjBoGnRAdBtnWK/W2gfZi+9+jo2LDBWURnxN4owuFppFe9ycrne56E0VE1omx7cE7uIdfTcyrResymYnTfc/GP6Imkzixc+Xd6aAGflE0s67aq0uMTxIfztK7BrF+XIZNmDabc0sEvQpicupnuOtYaI7QCx8T7AytOVjQapOfBMUuYbHz3SRFf7wIDAQAB"

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ubermedia/b/d;->c:[B

    return-void

    :array_a
    .array-data 0x1
        0x57t
        0x61t
        0x1et
        0x24t
        0x15t
        0x59t
        0x3et
        0x31t
        0x4at
        0x10t
        0xat
        0x31t
        0x44t
        0x21t
        0x3t
        0xdt
        0xdt
        0x3t
        0x32t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/ubermedia/b/f;)Lcom/ubermedia/b/g;
    .registers 9

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_8
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/ubermedia/b/f;->d()V

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Lcom/ubermedia/b/e;

    invoke-direct {v1, p0, p1}, Lcom/ubermedia/b/e;-><init>(Landroid/app/Activity;Lcom/ubermedia/b/f;)V

    invoke-static {p0}, Lcom/ubermedia/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/a/a/k;

    new-instance v3, Lcom/google/android/a/a/t;

    new-instance v4, Lcom/google/android/a/a/a;

    sget-object v5, Lcom/ubermedia/b/d;->c:[B

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/a/a/t;-><init>(Landroid/content/Context;Lcom/google/android/a/a/p;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNpPxQPHcJHd9h0B+H2hwDWwAlZnHb304cNbaUC1EzobD68poF4STMo2G6tIBqf6HMczHB535mTTjEc2bYC71p021Aw5sl5Gd6ECuClUXwqMl/73NCF7kZM34BRx4dFpTtuuagVLlQcE5usN7NKjhXcNc46aIhyjBoGnRAdBtnWK/W2gfZi+9+jo2LDBWURnxN4owuFppFe9ycrne56E0VE1omx7cE7uIdfTcyrResymYnTfc/GP6Imkzixc+Xd6aAGflE0s67aq0uMTxIfztK7BrF+XIZNmDabc0sEvQpicupnuOtYaI7QCx8T7AytOVjQapOfBMUuYbHz3SRFf7wIDAQAB"

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/a/a/k;-><init>(Landroid/content/Context;Lcom/google/android/a/a/q;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/a/a/k;->a(Lcom/google/android/a/a/m;)V

    new-instance v0, Lcom/ubermedia/b/g;

    invoke-direct {v0, v2, v1}, Lcom/ubermedia/b/g;-><init>(Lcom/google/android/a/a/k;Lcom/google/android/a/a/m;)V

    goto :goto_e
.end method

.method public static a(Lcom/ubermedia/b/g;)Lcom/ubermedia/b/g;
    .registers 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/ubermedia/b/g;->b()Lcom/google/android/a/a/m;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ubermedia/b/g;->b()Lcom/google/android/a/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/k;->a(Lcom/google/android/a/a/m;)V

    goto :goto_e
.end method
