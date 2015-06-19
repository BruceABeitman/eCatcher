.class public interface abstract Lcom/ibm/icu/impl/duration/impl/DataRecord$EFractionHandling;
.super Ljava/lang/Object;
.source "DataRecord.java"
.field public static final FPAUCAL:B = 0x3t
.field public static final FPLURAL:B = 0x0t
.field public static final FSINGULAR_PLURAL:B = 0x1t
.field public static final FSINGULAR_PLURAL_ANDAHALF:B = 0x2t
.field public static final names:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "FPLURAL"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "FSINGULAR_PLURAL"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "FSINGULAR_PLURAL_ANDAHALF"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "FPAUCAL"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;
return-void
.end method