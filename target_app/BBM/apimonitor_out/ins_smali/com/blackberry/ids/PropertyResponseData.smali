.class public Lcom/blackberry/ids/PropertyResponseData;
.super Ljava/lang/Object;
.source "PropertyResponseData.java"
.field public errorCode:I
.field public properties:[Lcom/blackberry/ids/Property;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/blackberry/ids/PropertyResponseData;->errorCode:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/blackberry/ids/PropertyResponseData;->properties:[Lcom/blackberry/ids/Property;
return-void
.end method