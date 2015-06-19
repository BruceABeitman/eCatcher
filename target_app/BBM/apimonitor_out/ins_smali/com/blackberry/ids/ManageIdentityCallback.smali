.class  Lcom/blackberry/ids/ManageIdentityCallback;
.super Lcom/blackberry/ids/JniCallback;
.source "ManageIdentityCallback.java"
.implements Lcom/blackberry/ids/IManageIdentityCallback;
.method public constructor <init>(JJ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/blackberry/ids/JniCallback;-><init>(JJ)V
return-void
.end method
.method static synthetic a(Lcom/blackberry/ids/ManageIdentityCallback;JJII)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/blackberry/ids/ManageIdentityCallback;->call(JJII)V
return-void
.end method
.method private native call(JJII)V
.end method
.method public call(II)V
.registers 4
new-instance v0, Lcom/blackberry/ids/ManageIdentityCallback$1;
invoke-direct {v0, p0, p1, p2}, Lcom/blackberry/ids/ManageIdentityCallback$1;-><init>(Lcom/blackberry/ids/ManageIdentityCallback;II)V
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method