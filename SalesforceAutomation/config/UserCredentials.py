user_credentials = {'User 1': {'user_name': 'infinity_polit_user_1@groups.ext.hpe.com', 'password':'Feb_2022'},
                    'User 2': {'user_name': 'infinity_polit_user_2@groups.ext.hpe.com', 'password':'Feb_2022'},
                    'User 3': {'user_name': 'infinity_polit_user_3@groups.ext.hpe.com', 'password':'Feb_2022'},
                    'User 4': {'user_name': 'infinity_polit_user_4@groups.ext.hpe.com', 'password':'Feb_2022'},
                    'User 5': {'user_name': 'infinity_polit_user_5@groups.ext.hpe.com', 'password':'Feb_2022'}}


def get_user(username):
    return user_credentials[username]