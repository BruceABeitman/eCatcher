.class Lcom/glympse/android/lib/fi;
.super Ljava/lang/Object;
.source "LCP.java"


# static fields
.field public static final CLIENT_API_BUILD:I = 0xc

.field public static final CLIENT_API_MAJOR:I = 0x1

.field public static final CLIENT_API_MINOR:I = 0x0

.field public static final CONTEXT_INTERNAL:J = 0x1000000000000L

.field public static final pA:J = 0x1L

.field public static final pB:J = 0x1000000001001L

.field public static final pC:J = 0x1000000001001L

.field public static final pz:Z = true


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cl()Ljava/lang/String;
    .registers 1

    const-string v0, "lite"

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cm()Ljava/lang/String;
    .registers 1

    const-string v0, "gl.introVer"

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
