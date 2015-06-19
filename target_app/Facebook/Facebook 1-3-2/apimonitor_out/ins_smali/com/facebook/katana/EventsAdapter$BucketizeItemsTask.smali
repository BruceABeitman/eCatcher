.class  Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;
.super Landroid/os/AsyncTask;
.source "EventsAdapter.java"
.field final synthetic this$0:Lcom/facebook/katana/EventsAdapter;
.method private constructor <init>(Lcom/facebook/katana/EventsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/EventsAdapter;Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;-><init>(Lcom/facebook/katana/EventsAdapter;)V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
#calls: Lcom/facebook/katana/EventsAdapter;->setItemsInfo()Ljava/util/List;
invoke-static {v0}, Lcom/facebook/katana/EventsAdapter;->access$0(Lcom/facebook/katana/EventsAdapter;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
check-cast p1, Ljava/util/List;
#setter for: Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;
invoke-static {v0, p1}, Lcom/facebook/katana/EventsAdapter;->access$1(Lcom/facebook/katana/EventsAdapter;Ljava/util/List;)V
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->notifyDataSetChanged()V
:try_start_c
invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
:goto_f
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_28
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
#getter for: Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I
invoke-static {v0}, Lcom/facebook/katana/EventsAdapter;->access$2(Lcom/facebook/katana/EventsAdapter;)I
move-result v1
const/4 v2, 0x1
sub-int/2addr v1, v2
#setter for: Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I
invoke-static {v0, v1}, Lcom/facebook/katana/EventsAdapter;->access$3(Lcom/facebook/katana/EventsAdapter;I)V
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
#getter for: Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I
invoke-static {v0}, Lcom/facebook/katana/EventsAdapter;->access$2(Lcom/facebook/katana/EventsAdapter;)I
move-result v0
if-lez v0, :cond_27
iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->this$0:Lcom/facebook/katana/EventsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->setItemsAsync()V
:cond_27
return-void
:catch_28
move-exception v0
goto :goto_f
.end method
.method protected onPreExecute()V
.registers 1
return-void
.end method