.class public interface abstract Lcom/ibm/icu/impl/duration/impl/DataRecord$ETimeLimit;
.super Ljava/lang/Object;
.source "DataRecord.java"
.field public static final LT:B = 0x1t
.field public static final MT:B = 0x2t
.field public static final NOLIMIT:B
.field public static final names:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "NOLIMIT"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "LT"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "MT"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ETimeLimit;->names:[Ljava/lang/String;
return-void
.end method