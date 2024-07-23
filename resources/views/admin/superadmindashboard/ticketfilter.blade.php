<div class="container">
	<form method="GET" action="{{ route('admin.all_tickets') }}">
		<div class="row" id="filter">
			<div class="form-group col-3">
				<select data-filter="plant" class="filter-plant filter form-control">
					<option value="">Select Plant</option>
					<option value="all">All</option>
					@foreach(getPlants() as $plant)
                        <option value="{{ $plant->id }}">{{ $plant->plant_id }}</option>
                    @endforeach
				</select>
			</div>
			<div class="form-group col-3">
				<select data-filter="status" class="filter-status filter form-control">
					<option value="">Select Status</option>
					<option value="all">All</option>
					@foreach(getStatusList() as $key => $status)
                        <option value="{{ $key }}">{{ $key }}</option>
                    @endforeach
				</select>
			</div>
			<div class="form-group col-3">
				<input class="form-control" type="date" placeholder="Search" />
			</div>
			<div class="form-group col-3">
				<select data-filter="priority" class="filter-priority filter form-control">
					<option value="">Select Priority</option>
					<option value="all">All</option>
					@foreach(getPriority() as $key =>  $priority)
                        <option value="{{ $key }}">{{ $key }}</option>
                    @endforeach
				</select>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-3">
				<select data-filter="category" class="filter-category filter form-control">
					<option value="">Select Category</option>
					<option value="all">All</option>
					@foreach(getCategories() as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach
				</select>
			</div>
			<div class="form-group col-3">
				<select data-filter="user" class="filter-user filter form-control">
					<option value="">Select User</option>
					<option value="all">All</option>
					@foreach(getUsers() as $user)
                        <option value="{{ $user->id }}">{{ $user->name }}</option>
                    @endforeach
				</select>
			</div>
			<div class="form-group col-3">
				<select data-filter="user" class="filter-user filter form-control">
					<option value="">Select Customer</option>
					<option value="all">All</option>
					@foreach(getCustomers() as $customer)
                        <option value="{{ $customer->id }}">{{ $customer->username }}</option>
                    @endforeach
				</select>
			</div>
			<div class="form-group col-3">
				<div class="input-group">
					<input class="form-control" type="text" placeholder="Search" />
					<button type="submit" class="btn btn-primary">Search</button>
				</div>
			</div>
		</div>
	</form>
</div>