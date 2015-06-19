.class public Lcom/fsck/k9/EmailAddressAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EmailAddressAdapter.java"
.field public static final DATA_INDEX:I = 0x2
.field public static final NAME_INDEX:I = 0x1
.field private static final PROJECTION:[Ljava/lang/String; = null
.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC, name"
.field private mContentResolver:Landroid/content/ContentResolver;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "data"
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const v0, 0x7f030018
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;
return-void
.end method
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 7
const v2, 0x7f0b006c
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f0b006d
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const/4 v2, 0x1
invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v2, 0x2
invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.registers 3
invoke-virtual {p0, p1}, Lcom/fsck/k9/EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
.registers 5
const/4 v2, 0x1
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/fsck/k9/mail/Address;
invoke-direct {v2, v0, v1}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.registers 10
const/4 v3, 0x0
if-eqz p1, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "(name LIKE "
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ") OR (data LIKE "
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ")"
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_3c
iget-object v0, p0, Lcom/fsck/k9/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;
sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;
sget-object v2, Lcom/fsck/k9/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;
const/4 v4, 0x0
const-string v5, "times_contacted DESC, name"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method