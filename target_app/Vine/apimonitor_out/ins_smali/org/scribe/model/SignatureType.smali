.class public final enum Lorg/scribe/model/SignatureType;
.super Ljava/lang/Enum;
.source "SignatureType.java"
.field private static final synthetic $VALUES:[Lorg/scribe/model/SignatureType;
.field public static final enum Header:Lorg/scribe/model/SignatureType;
.field public static final enum QueryString:Lorg/scribe/model/SignatureType;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lorg/scribe/model/SignatureType;
const-string v1, "Header"
invoke-direct {v0, v1, v2}, Lorg/scribe/model/SignatureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/scribe/model/SignatureType;->Header:Lorg/scribe/model/SignatureType;
new-instance v0, Lorg/scribe/model/SignatureType;
const-string v1, "QueryString"
invoke-direct {v0, v1, v3}, Lorg/scribe/model/SignatureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/scribe/model/SignatureType;->QueryString:Lorg/scribe/model/SignatureType;
const/4 v0, 0x2
new-array v0, v0, [Lorg/scribe/model/SignatureType;
sget-object v1, Lorg/scribe/model/SignatureType;->Header:Lorg/scribe/model/SignatureType;
aput-object v1, v0, v2
sget-object v1, Lorg/scribe/model/SignatureType;->QueryString:Lorg/scribe/model/SignatureType;
aput-object v1, v0, v3
sput-object v0, Lorg/scribe/model/SignatureType;->$VALUES:[Lorg/scribe/model/SignatureType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/scribe/model/SignatureType;
.registers 2
const-class v0, Lorg/scribe/model/SignatureType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lorg/scribe/model/SignatureType;
return-object v0
.end method
.method public static values()[Lorg/scribe/model/SignatureType;
.registers 1
sget-object v0, Lorg/scribe/model/SignatureType;->$VALUES:[Lorg/scribe/model/SignatureType;
invoke-virtual {v0}, [Lorg/scribe/model/SignatureType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/scribe/model/SignatureType;
return-object v0
.end method