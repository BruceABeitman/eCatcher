.class public final Lorg/codehaus/jackson/Base64Variants;
.super Ljava/lang/Object;


# static fields
.field public static final MIME:Lorg/codehaus/jackson/Base64Variant; = null

.field public static final MIME_NO_LINEFEEDS:Lorg/codehaus/jackson/Base64Variant; = null

.field public static final MODIFIED_FOR_URL:Lorg/codehaus/jackson/Base64Variant; = null

.field public static final PEM:Lorg/codehaus/jackson/Base64Variant; = null

.field static final STD_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const v12, 0x7fffffff

    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v11, 0x0

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    new-instance v0, Lorg/codehaus/jackson/Base64Variant;

    const-string v1, "MIME"

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lorg/codehaus/jackson/Base64Variants;->MIME:Lorg/codehaus/jackson/Base64Variant;

    new-instance v0, Lorg/codehaus/jackson/Base64Variant;

    sget-object v1, Lorg/codehaus/jackson/Base64Variants;->MIME:Lorg/codehaus/jackson/Base64Variant;

    const-string v5, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v5, v12}, Lorg/codehaus/jackson/Base64Variant;-><init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lorg/codehaus/jackson/Base64Variant;

    new-instance v5, Lorg/codehaus/jackson/Base64Variant;

    sget-object v6, Lorg/codehaus/jackson/Base64Variants;->MIME:Lorg/codehaus/jackson/Base64Variant;

    const-string v7, "PEM"

    const/16 v10, 0x40

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/jackson/Base64Variant;-><init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    sput-object v5, Lorg/codehaus/jackson/Base64Variants;->PEM:Lorg/codehaus/jackson/Base64Variant;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    new-instance v0, Lorg/codehaus/jackson/Base64Variant;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v11

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lorg/codehaus/jackson/Base64Variants;->MODIFIED_FOR_URL:Lorg/codehaus/jackson/Base64Variant;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lorg/codehaus/jackson/Base64Variant;

    return-object v0
.end method
