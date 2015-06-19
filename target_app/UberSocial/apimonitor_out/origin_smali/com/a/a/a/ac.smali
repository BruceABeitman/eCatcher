.class public interface abstract Lcom/a/a/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/a/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/ad;

    invoke-direct {v0}, Lcom/a/a/a/ad;-><init>()V

    sput-object v0, Lcom/a/a/a/ac;->a:Lcom/a/a/a/ac;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method
