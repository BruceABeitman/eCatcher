.class public Lcom/facebook/katana/EventDetailsAdapter$Item;
.super Ljava/lang/Object;
.source "EventDetailsAdapter.java"
.field public static final TYPE_ADDRESS:I = 0x2
.field public static final TYPE_GUESTS:I = 0x3
.field public static final TYPE_HOST:I = 0x0
.field public static final TYPE_LOCATION:I = 0x1
.field private final mEnabled:Z
.field private final mLabel:Ljava/lang/String;
.field private final mString:Ljava/lang/String;
.field private final mType:I
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mType:I
iput-object p2, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mLabel:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mString:Ljava/lang/String;
iput-boolean p4, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mEnabled:Z
return-void
.end method
.method public getEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mEnabled:Z
return v0
.end method
.method public getLabel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mLabel:Ljava/lang/String;
return-object v0
.end method
.method public getString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mString:Ljava/lang/String;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventDetailsAdapter$Item;->mType:I
return v0
.end method