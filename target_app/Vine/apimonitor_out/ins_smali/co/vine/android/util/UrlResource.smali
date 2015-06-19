.class public abstract Lco/vine/android/util/UrlResource;
.super Ljava/lang/Object;
.source "UrlResource.java"
.field protected static final NO_REQUEST_NEEDED:I
.field public nextRequestTime:J
.field public final url:Ljava/lang/String;
.field public value:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/UrlResource;->url:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/util/UrlResource;->nextRequestTime:J
return-void
.end method
.method public isValid()Z
.registers 5
iget-object v0, p0, Lco/vine/android/util/UrlResource;->value:Ljava/lang/Object;
if-eqz v0, :cond_e
iget-wide v0, p0, Lco/vine/android/util/UrlResource;->nextRequestTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public abstract originalSize()I
.end method
.method public abstract size()I
.end method