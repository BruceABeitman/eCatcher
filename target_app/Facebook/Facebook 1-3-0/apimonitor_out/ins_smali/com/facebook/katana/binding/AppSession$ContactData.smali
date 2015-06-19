.class public Lcom/facebook/katana/binding/AppSession$ContactData;
.super Ljava/lang/Object;
.source "AppSession.java"
.field final mCell:Ljava/lang/String;
.field final mEmail:Ljava/lang/String;
.field final mName:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$ContactData;->mName:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/katana/binding/AppSession$ContactData;->mEmail:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/binding/AppSession$ContactData;->mCell:Ljava/lang/String;
return-void
.end method