.class public final Lcom/fasterxml/jackson/databind/cfg/PackageVersion;
.super Ljava/lang/Object;
.source "PackageVersion.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;


# static fields
.field public static final VERSION:Lcom/fasterxml/jackson/a/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "2.2.3"

    const-string v1, "com.fasterxml.jackson.core"

    const-string v2, "jackson-databind"

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
